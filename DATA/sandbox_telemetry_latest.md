# sandbox_telemetry_parse — 2026-10-14 05:21:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=112014 lines=252
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 247 |
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
| `chromeBrowserPssKb` | {'int': 247} |
| `chromeGpuPssKb` | {'int': 247} |
| `chromeOtherPssKb` | {'int': 247} |
| `chromeProcesses` | {'int': 247} |
| `chromeProfiles` | {'int': 247} |
| `chromeRendererMaxPssKb` | {'int': 247} |
| `chromeRendererPssKb` | {'int': 247} |
| `chromeRenderers` | {'int': 247} |
| `chromeTabs` | {'int': 247} |
| `chromeTabsProbedProfiles` | {'int': 247} |
| `chromeUtilityPssKb` | {'int': 247} |
| `desktopPssKb` | {'int': 247} |
| `hostPssKb` | {'int': 247} |
| `kind` | {'str': 247} |
| `memAvailableKb` | {'int': 247} |
| `memTotalKb` | {'int': 247} |
| `otherPssKb` | {'int': 247} |
| `processes` | {'int': 247} |
| `pssFallbackProcesses` | {'int': 247} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
