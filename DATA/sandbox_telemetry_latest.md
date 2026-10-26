# sandbox_telemetry_parse — 2026-10-26 19:46:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=105477 lines=237
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 232 |
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
| `chromeBrowserPssKb` | {'int': 232} |
| `chromeGpuPssKb` | {'int': 232} |
| `chromeOtherPssKb` | {'int': 232} |
| `chromeProcesses` | {'int': 232} |
| `chromeProfiles` | {'int': 232} |
| `chromeRendererMaxPssKb` | {'int': 232} |
| `chromeRendererPssKb` | {'int': 232} |
| `chromeRenderers` | {'int': 232} |
| `chromeTabs` | {'int': 232} |
| `chromeTabsProbedProfiles` | {'int': 232} |
| `chromeUtilityPssKb` | {'int': 232} |
| `desktopPssKb` | {'int': 232} |
| `hostPssKb` | {'int': 232} |
| `kind` | {'str': 232} |
| `memAvailableKb` | {'int': 232} |
| `memTotalKb` | {'int': 232} |
| `otherPssKb` | {'int': 232} |
| `processes` | {'int': 232} |
| `pssFallbackProcesses` | {'int': 232} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
