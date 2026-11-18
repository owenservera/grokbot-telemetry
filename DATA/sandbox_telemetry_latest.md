# sandbox_telemetry_parse — 2026-11-18 14:16:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=850179 lines=1886
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1879 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1879} |
| `chromeGpuPssKb` | {'int': 1879} |
| `chromeOtherPssKb` | {'int': 1879} |
| `chromeProcesses` | {'int': 1879} |
| `chromeProfiles` | {'int': 1879} |
| `chromeRendererMaxPssKb` | {'int': 1879} |
| `chromeRendererPssKb` | {'int': 1879} |
| `chromeRenderers` | {'int': 1879} |
| `chromeTabs` | {'int': 1879} |
| `chromeTabsProbedProfiles` | {'int': 1879} |
| `chromeUtilityPssKb` | {'int': 1879} |
| `desktopPssKb` | {'int': 1879} |
| `hostPssKb` | {'int': 1879} |
| `kind` | {'str': 1879} |
| `memAvailableKb` | {'int': 1879} |
| `memTotalKb` | {'int': 1879} |
| `otherPssKb` | {'int': 1879} |
| `processes` | {'int': 1879} |
| `pssFallbackProcesses` | {'int': 1879} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
