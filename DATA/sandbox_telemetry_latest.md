# sandbox_telemetry_parse — 2026-10-15 14:16:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=898042 lines=1991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1986 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1986} |
| `chromeGpuPssKb` | {'int': 1986} |
| `chromeOtherPssKb` | {'int': 1986} |
| `chromeProcesses` | {'int': 1986} |
| `chromeProfiles` | {'int': 1986} |
| `chromeRendererMaxPssKb` | {'int': 1986} |
| `chromeRendererPssKb` | {'int': 1986} |
| `chromeRenderers` | {'int': 1986} |
| `chromeTabs` | {'int': 1986} |
| `chromeTabsProbedProfiles` | {'int': 1986} |
| `chromeUtilityPssKb` | {'int': 1986} |
| `desktopPssKb` | {'int': 1986} |
| `hostPssKb` | {'int': 1986} |
| `kind` | {'str': 1986} |
| `memAvailableKb` | {'int': 1986} |
| `memTotalKb` | {'int': 1986} |
| `otherPssKb` | {'int': 1986} |
| `processes` | {'int': 1986} |
| `pssFallbackProcesses` | {'int': 1986} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
