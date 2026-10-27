# sandbox_telemetry_parse — 2026-10-27 04:22:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=318260 lines=707
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 702 |
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
| `chromeBrowserPssKb` | {'int': 702} |
| `chromeGpuPssKb` | {'int': 702} |
| `chromeOtherPssKb` | {'int': 702} |
| `chromeProcesses` | {'int': 702} |
| `chromeProfiles` | {'int': 702} |
| `chromeRendererMaxPssKb` | {'int': 702} |
| `chromeRendererPssKb` | {'int': 702} |
| `chromeRenderers` | {'int': 702} |
| `chromeTabs` | {'int': 702} |
| `chromeTabsProbedProfiles` | {'int': 702} |
| `chromeUtilityPssKb` | {'int': 702} |
| `desktopPssKb` | {'int': 702} |
| `hostPssKb` | {'int': 702} |
| `kind` | {'str': 702} |
| `memAvailableKb` | {'int': 702} |
| `memTotalKb` | {'int': 702} |
| `otherPssKb` | {'int': 702} |
| `processes` | {'int': 702} |
| `pssFallbackProcesses` | {'int': 702} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
