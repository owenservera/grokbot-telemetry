# sandbox_telemetry_parse — 2026-10-06 15:10:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=441146 lines=972
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 967 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 967} |
| `chromeGpuPssKb` | {'int': 967} |
| `chromeOtherPssKb` | {'int': 967} |
| `chromeProcesses` | {'int': 967} |
| `chromeProfiles` | {'int': 967} |
| `chromeRendererMaxPssKb` | {'int': 967} |
| `chromeRendererPssKb` | {'int': 967} |
| `chromeRenderers` | {'int': 967} |
| `chromeTabs` | {'int': 967} |
| `chromeTabsProbedProfiles` | {'int': 967} |
| `chromeUtilityPssKb` | {'int': 967} |
| `desktopPssKb` | {'int': 967} |
| `hostPssKb` | {'int': 967} |
| `kind` | {'str': 967} |
| `memAvailableKb` | {'int': 967} |
| `memTotalKb` | {'int': 967} |
| `otherPssKb` | {'int': 967} |
| `processes` | {'int': 967} |
| `pssFallbackProcesses` | {'int': 967} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
