# sandbox_telemetry_parse — 2026-11-12 19:05:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2283094 lines=5053
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5044 |
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
| `chromeBrowserPssKb` | {'int': 5044} |
| `chromeGpuPssKb` | {'int': 5044} |
| `chromeOtherPssKb` | {'int': 5044} |
| `chromeProcesses` | {'int': 5044} |
| `chromeProfiles` | {'int': 5044} |
| `chromeRendererMaxPssKb` | {'int': 5044} |
| `chromeRendererPssKb` | {'int': 5044} |
| `chromeRenderers` | {'int': 5044} |
| `chromeTabs` | {'int': 5044} |
| `chromeTabsProbedProfiles` | {'int': 5044} |
| `chromeUtilityPssKb` | {'int': 5044} |
| `desktopPssKb` | {'int': 5044} |
| `hostPssKb` | {'int': 5044} |
| `kind` | {'str': 5044} |
| `memAvailableKb` | {'int': 5044} |
| `memTotalKb` | {'int': 5044} |
| `otherPssKb` | {'int': 5044} |
| `processes` | {'int': 5044} |
| `pssFallbackProcesses` | {'int': 5044} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
