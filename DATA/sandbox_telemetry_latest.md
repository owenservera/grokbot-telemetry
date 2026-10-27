# sandbox_telemetry_parse — 2026-10-27 08:35:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=418152 lines=928
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 923 |
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
| `chromeBrowserPssKb` | {'int': 923} |
| `chromeGpuPssKb` | {'int': 923} |
| `chromeOtherPssKb` | {'int': 923} |
| `chromeProcesses` | {'int': 923} |
| `chromeProfiles` | {'int': 923} |
| `chromeRendererMaxPssKb` | {'int': 923} |
| `chromeRendererPssKb` | {'int': 923} |
| `chromeRenderers` | {'int': 923} |
| `chromeTabs` | {'int': 923} |
| `chromeTabsProbedProfiles` | {'int': 923} |
| `chromeUtilityPssKb` | {'int': 923} |
| `desktopPssKb` | {'int': 923} |
| `hostPssKb` | {'int': 923} |
| `kind` | {'str': 923} |
| `memAvailableKb` | {'int': 923} |
| `memTotalKb` | {'int': 923} |
| `otherPssKb` | {'int': 923} |
| `processes` | {'int': 923} |
| `pssFallbackProcesses` | {'int': 923} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
