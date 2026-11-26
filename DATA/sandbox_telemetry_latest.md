# sandbox_telemetry_parse — 2026-11-26 21:17:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=89719 lines=205
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 197 |
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
| `chromeBrowserPssKb` | {'int': 197} |
| `chromeGpuPssKb` | {'int': 197} |
| `chromeOtherPssKb` | {'int': 197} |
| `chromeProcesses` | {'int': 197} |
| `chromeProfiles` | {'int': 197} |
| `chromeRendererMaxPssKb` | {'int': 197} |
| `chromeRendererPssKb` | {'int': 197} |
| `chromeRenderers` | {'int': 197} |
| `chromeTabs` | {'int': 197} |
| `chromeTabsProbedProfiles` | {'int': 197} |
| `chromeUtilityPssKb` | {'int': 197} |
| `desktopPssKb` | {'int': 197} |
| `hostPssKb` | {'int': 197} |
| `kind` | {'str': 197} |
| `memAvailableKb` | {'int': 197} |
| `memTotalKb` | {'int': 197} |
| `otherPssKb` | {'int': 197} |
| `processes` | {'int': 197} |
| `pssFallbackProcesses` | {'int': 197} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
