# sandbox_telemetry_parse — 2026-11-26 13:42:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3275796 lines=7255
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7240 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7240} |
| `chromeGpuPssKb` | {'int': 7240} |
| `chromeOtherPssKb` | {'int': 7240} |
| `chromeProcesses` | {'int': 7240} |
| `chromeProfiles` | {'int': 7240} |
| `chromeRendererMaxPssKb` | {'int': 7240} |
| `chromeRendererPssKb` | {'int': 7240} |
| `chromeRenderers` | {'int': 7240} |
| `chromeTabs` | {'int': 7240} |
| `chromeTabsProbedProfiles` | {'int': 7240} |
| `chromeUtilityPssKb` | {'int': 7240} |
| `desktopPssKb` | {'int': 7240} |
| `hostPssKb` | {'int': 7240} |
| `kind` | {'str': 7240} |
| `memAvailableKb` | {'int': 7240} |
| `memTotalKb` | {'int': 7240} |
| `otherPssKb` | {'int': 7240} |
| `processes` | {'int': 7240} |
| `pssFallbackProcesses` | {'int': 7240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
