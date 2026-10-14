# sandbox_telemetry_parse — 2026-10-14 03:00:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=60938 lines=139
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 134 |
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
| `chromeBrowserPssKb` | {'int': 134} |
| `chromeGpuPssKb` | {'int': 134} |
| `chromeOtherPssKb` | {'int': 134} |
| `chromeProcesses` | {'int': 134} |
| `chromeProfiles` | {'int': 134} |
| `chromeRendererMaxPssKb` | {'int': 134} |
| `chromeRendererPssKb` | {'int': 134} |
| `chromeRenderers` | {'int': 134} |
| `chromeTabs` | {'int': 134} |
| `chromeTabsProbedProfiles` | {'int': 134} |
| `chromeUtilityPssKb` | {'int': 134} |
| `desktopPssKb` | {'int': 134} |
| `hostPssKb` | {'int': 134} |
| `kind` | {'str': 134} |
| `memAvailableKb` | {'int': 134} |
| `memTotalKb` | {'int': 134} |
| `otherPssKb` | {'int': 134} |
| `processes` | {'int': 134} |
| `pssFallbackProcesses` | {'int': 134} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
