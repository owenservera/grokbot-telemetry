# sandbox_telemetry_parse — 2026-10-27 12:32:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=514573 lines=1141
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1136 |
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
| `chromeBrowserPssKb` | {'int': 1136} |
| `chromeGpuPssKb` | {'int': 1136} |
| `chromeOtherPssKb` | {'int': 1136} |
| `chromeProcesses` | {'int': 1136} |
| `chromeProfiles` | {'int': 1136} |
| `chromeRendererMaxPssKb` | {'int': 1136} |
| `chromeRendererPssKb` | {'int': 1136} |
| `chromeRenderers` | {'int': 1136} |
| `chromeTabs` | {'int': 1136} |
| `chromeTabsProbedProfiles` | {'int': 1136} |
| `chromeUtilityPssKb` | {'int': 1136} |
| `desktopPssKb` | {'int': 1136} |
| `hostPssKb` | {'int': 1136} |
| `kind` | {'str': 1136} |
| `memAvailableKb` | {'int': 1136} |
| `memTotalKb` | {'int': 1136} |
| `otherPssKb` | {'int': 1136} |
| `processes` | {'int': 1136} |
| `pssFallbackProcesses` | {'int': 1136} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
