# sandbox_telemetry_parse — 2026-11-07 16:33:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=542127 lines=1206
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1197 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1197} |
| `chromeGpuPssKb` | {'int': 1197} |
| `chromeOtherPssKb` | {'int': 1197} |
| `chromeProcesses` | {'int': 1197} |
| `chromeProfiles` | {'int': 1197} |
| `chromeRendererMaxPssKb` | {'int': 1197} |
| `chromeRendererPssKb` | {'int': 1197} |
| `chromeRenderers` | {'int': 1197} |
| `chromeTabs` | {'int': 1197} |
| `chromeTabsProbedProfiles` | {'int': 1197} |
| `chromeUtilityPssKb` | {'int': 1197} |
| `desktopPssKb` | {'int': 1197} |
| `hostPssKb` | {'int': 1197} |
| `kind` | {'str': 1197} |
| `memAvailableKb` | {'int': 1197} |
| `memTotalKb` | {'int': 1197} |
| `otherPssKb` | {'int': 1197} |
| `processes` | {'int': 1197} |
| `pssFallbackProcesses` | {'int': 1197} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
