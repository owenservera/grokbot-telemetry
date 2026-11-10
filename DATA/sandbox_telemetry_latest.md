# sandbox_telemetry_parse — 2026-11-10 20:15:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1301510 lines=2884
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2875 |
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
| `chromeBrowserPssKb` | {'int': 2875} |
| `chromeGpuPssKb` | {'int': 2875} |
| `chromeOtherPssKb` | {'int': 2875} |
| `chromeProcesses` | {'int': 2875} |
| `chromeProfiles` | {'int': 2875} |
| `chromeRendererMaxPssKb` | {'int': 2875} |
| `chromeRendererPssKb` | {'int': 2875} |
| `chromeRenderers` | {'int': 2875} |
| `chromeTabs` | {'int': 2875} |
| `chromeTabsProbedProfiles` | {'int': 2875} |
| `chromeUtilityPssKb` | {'int': 2875} |
| `desktopPssKb` | {'int': 2875} |
| `hostPssKb` | {'int': 2875} |
| `kind` | {'str': 2875} |
| `memAvailableKb` | {'int': 2875} |
| `memTotalKb` | {'int': 2875} |
| `otherPssKb` | {'int': 2875} |
| `processes` | {'int': 2875} |
| `pssFallbackProcesses` | {'int': 2875} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
