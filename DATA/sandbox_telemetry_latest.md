# sandbox_telemetry_parse — 2026-11-20 13:21:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1730207 lines=3835
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3824 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3824} |
| `chromeGpuPssKb` | {'int': 3824} |
| `chromeOtherPssKb` | {'int': 3824} |
| `chromeProcesses` | {'int': 3824} |
| `chromeProfiles` | {'int': 3824} |
| `chromeRendererMaxPssKb` | {'int': 3824} |
| `chromeRendererPssKb` | {'int': 3824} |
| `chromeRenderers` | {'int': 3824} |
| `chromeTabs` | {'int': 3824} |
| `chromeTabsProbedProfiles` | {'int': 3824} |
| `chromeUtilityPssKb` | {'int': 3824} |
| `desktopPssKb` | {'int': 3824} |
| `hostPssKb` | {'int': 3824} |
| `kind` | {'str': 3824} |
| `memAvailableKb` | {'int': 3824} |
| `memTotalKb` | {'int': 3824} |
| `otherPssKb` | {'int': 3824} |
| `processes` | {'int': 3824} |
| `pssFallbackProcesses` | {'int': 3824} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
