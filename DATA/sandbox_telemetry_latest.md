# sandbox_telemetry_parse — 2026-11-26 22:18:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=109164 lines=248
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 240 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 240} |
| `chromeGpuPssKb` | {'int': 240} |
| `chromeOtherPssKb` | {'int': 240} |
| `chromeProcesses` | {'int': 240} |
| `chromeProfiles` | {'int': 240} |
| `chromeRendererMaxPssKb` | {'int': 240} |
| `chromeRendererPssKb` | {'int': 240} |
| `chromeRenderers` | {'int': 240} |
| `chromeTabs` | {'int': 240} |
| `chromeTabsProbedProfiles` | {'int': 240} |
| `chromeUtilityPssKb` | {'int': 240} |
| `desktopPssKb` | {'int': 240} |
| `hostPssKb` | {'int': 240} |
| `kind` | {'str': 240} |
| `memAvailableKb` | {'int': 240} |
| `memTotalKb` | {'int': 240} |
| `otherPssKb` | {'int': 240} |
| `processes` | {'int': 240} |
| `pssFallbackProcesses` | {'int': 240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
