# sandbox_telemetry_parse — 2026-10-14 11:38:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=264338 lines=589
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 584 |
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
| `chromeBrowserPssKb` | {'int': 584} |
| `chromeGpuPssKb` | {'int': 584} |
| `chromeOtherPssKb` | {'int': 584} |
| `chromeProcesses` | {'int': 584} |
| `chromeProfiles` | {'int': 584} |
| `chromeRendererMaxPssKb` | {'int': 584} |
| `chromeRendererPssKb` | {'int': 584} |
| `chromeRenderers` | {'int': 584} |
| `chromeTabs` | {'int': 584} |
| `chromeTabsProbedProfiles` | {'int': 584} |
| `chromeUtilityPssKb` | {'int': 584} |
| `desktopPssKb` | {'int': 584} |
| `hostPssKb` | {'int': 584} |
| `kind` | {'str': 584} |
| `memAvailableKb` | {'int': 584} |
| `memTotalKb` | {'int': 584} |
| `otherPssKb` | {'int': 584} |
| `processes` | {'int': 584} |
| `pssFallbackProcesses` | {'int': 584} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
