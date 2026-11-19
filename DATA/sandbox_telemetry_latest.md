# sandbox_telemetry_parse — 2026-11-19 04:52:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1124900 lines=2495
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2486 |
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
| `chromeBrowserPssKb` | {'int': 2486} |
| `chromeGpuPssKb` | {'int': 2486} |
| `chromeOtherPssKb` | {'int': 2486} |
| `chromeProcesses` | {'int': 2486} |
| `chromeProfiles` | {'int': 2486} |
| `chromeRendererMaxPssKb` | {'int': 2486} |
| `chromeRendererPssKb` | {'int': 2486} |
| `chromeRenderers` | {'int': 2486} |
| `chromeTabs` | {'int': 2486} |
| `chromeTabsProbedProfiles` | {'int': 2486} |
| `chromeUtilityPssKb` | {'int': 2486} |
| `desktopPssKb` | {'int': 2486} |
| `hostPssKb` | {'int': 2486} |
| `kind` | {'str': 2486} |
| `memAvailableKb` | {'int': 2486} |
| `memTotalKb` | {'int': 2486} |
| `otherPssKb` | {'int': 2486} |
| `processes` | {'int': 2486} |
| `pssFallbackProcesses` | {'int': 2486} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
