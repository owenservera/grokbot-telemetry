# sandbox_telemetry_parse — 2026-10-27 07:39:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=398264 lines=884
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 879 |
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
| `chromeBrowserPssKb` | {'int': 879} |
| `chromeGpuPssKb` | {'int': 879} |
| `chromeOtherPssKb` | {'int': 879} |
| `chromeProcesses` | {'int': 879} |
| `chromeProfiles` | {'int': 879} |
| `chromeRendererMaxPssKb` | {'int': 879} |
| `chromeRendererPssKb` | {'int': 879} |
| `chromeRenderers` | {'int': 879} |
| `chromeTabs` | {'int': 879} |
| `chromeTabsProbedProfiles` | {'int': 879} |
| `chromeUtilityPssKb` | {'int': 879} |
| `desktopPssKb` | {'int': 879} |
| `hostPssKb` | {'int': 879} |
| `kind` | {'str': 879} |
| `memAvailableKb` | {'int': 879} |
| `memTotalKb` | {'int': 879} |
| `otherPssKb` | {'int': 879} |
| `processes` | {'int': 879} |
| `pssFallbackProcesses` | {'int': 879} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
