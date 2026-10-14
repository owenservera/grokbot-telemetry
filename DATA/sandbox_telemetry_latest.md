# sandbox_telemetry_parse — 2026-10-14 16:31:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=380050 lines=845
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 840 |
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
| `chromeBrowserPssKb` | {'int': 840} |
| `chromeGpuPssKb` | {'int': 840} |
| `chromeOtherPssKb` | {'int': 840} |
| `chromeProcesses` | {'int': 840} |
| `chromeProfiles` | {'int': 840} |
| `chromeRendererMaxPssKb` | {'int': 840} |
| `chromeRendererPssKb` | {'int': 840} |
| `chromeRenderers` | {'int': 840} |
| `chromeTabs` | {'int': 840} |
| `chromeTabsProbedProfiles` | {'int': 840} |
| `chromeUtilityPssKb` | {'int': 840} |
| `desktopPssKb` | {'int': 840} |
| `hostPssKb` | {'int': 840} |
| `kind` | {'str': 840} |
| `memAvailableKb` | {'int': 840} |
| `memTotalKb` | {'int': 840} |
| `otherPssKb` | {'int': 840} |
| `processes` | {'int': 840} |
| `pssFallbackProcesses` | {'int': 840} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
