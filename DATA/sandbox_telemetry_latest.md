# sandbox_telemetry_parse — 2026-10-14 04:45:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=98906 lines=223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 218 |
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
| `chromeBrowserPssKb` | {'int': 218} |
| `chromeGpuPssKb` | {'int': 218} |
| `chromeOtherPssKb` | {'int': 218} |
| `chromeProcesses` | {'int': 218} |
| `chromeProfiles` | {'int': 218} |
| `chromeRendererMaxPssKb` | {'int': 218} |
| `chromeRendererPssKb` | {'int': 218} |
| `chromeRenderers` | {'int': 218} |
| `chromeTabs` | {'int': 218} |
| `chromeTabsProbedProfiles` | {'int': 218} |
| `chromeUtilityPssKb` | {'int': 218} |
| `desktopPssKb` | {'int': 218} |
| `hostPssKb` | {'int': 218} |
| `kind` | {'str': 218} |
| `memAvailableKb` | {'int': 218} |
| `memTotalKb` | {'int': 218} |
| `otherPssKb` | {'int': 218} |
| `processes` | {'int': 218} |
| `pssFallbackProcesses` | {'int': 218} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
