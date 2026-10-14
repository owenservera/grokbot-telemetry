# sandbox_telemetry_parse — 2026-10-14 07:32:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=164898 lines=369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 364 |
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
| `chromeBrowserPssKb` | {'int': 364} |
| `chromeGpuPssKb` | {'int': 364} |
| `chromeOtherPssKb` | {'int': 364} |
| `chromeProcesses` | {'int': 364} |
| `chromeProfiles` | {'int': 364} |
| `chromeRendererMaxPssKb` | {'int': 364} |
| `chromeRendererPssKb` | {'int': 364} |
| `chromeRenderers` | {'int': 364} |
| `chromeTabs` | {'int': 364} |
| `chromeTabsProbedProfiles` | {'int': 364} |
| `chromeUtilityPssKb` | {'int': 364} |
| `desktopPssKb` | {'int': 364} |
| `hostPssKb` | {'int': 364} |
| `kind` | {'str': 364} |
| `memAvailableKb` | {'int': 364} |
| `memTotalKb` | {'int': 364} |
| `otherPssKb` | {'int': 364} |
| `processes` | {'int': 364} |
| `pssFallbackProcesses` | {'int': 364} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
