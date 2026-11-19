# sandbox_telemetry_parse — 2026-11-19 13:53:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1298092 lines=2878
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2869 |
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
| `chromeBrowserPssKb` | {'int': 2869} |
| `chromeGpuPssKb` | {'int': 2869} |
| `chromeOtherPssKb` | {'int': 2869} |
| `chromeProcesses` | {'int': 2869} |
| `chromeProfiles` | {'int': 2869} |
| `chromeRendererMaxPssKb` | {'int': 2869} |
| `chromeRendererPssKb` | {'int': 2869} |
| `chromeRenderers` | {'int': 2869} |
| `chromeTabs` | {'int': 2869} |
| `chromeTabsProbedProfiles` | {'int': 2869} |
| `chromeUtilityPssKb` | {'int': 2869} |
| `desktopPssKb` | {'int': 2869} |
| `hostPssKb` | {'int': 2869} |
| `kind` | {'str': 2869} |
| `memAvailableKb` | {'int': 2869} |
| `memTotalKb` | {'int': 2869} |
| `otherPssKb` | {'int': 2869} |
| `processes` | {'int': 2869} |
| `pssFallbackProcesses` | {'int': 2869} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
