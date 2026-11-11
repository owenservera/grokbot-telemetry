# sandbox_telemetry_parse — 2026-11-11 09:11:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1558428 lines=3452
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3443 |
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
| `chromeBrowserPssKb` | {'int': 3443} |
| `chromeGpuPssKb` | {'int': 3443} |
| `chromeOtherPssKb` | {'int': 3443} |
| `chromeProcesses` | {'int': 3443} |
| `chromeProfiles` | {'int': 3443} |
| `chromeRendererMaxPssKb` | {'int': 3443} |
| `chromeRendererPssKb` | {'int': 3443} |
| `chromeRenderers` | {'int': 3443} |
| `chromeTabs` | {'int': 3443} |
| `chromeTabsProbedProfiles` | {'int': 3443} |
| `chromeUtilityPssKb` | {'int': 3443} |
| `desktopPssKb` | {'int': 3443} |
| `hostPssKb` | {'int': 3443} |
| `kind` | {'str': 3443} |
| `memAvailableKb` | {'int': 3443} |
| `memTotalKb` | {'int': 3443} |
| `otherPssKb` | {'int': 3443} |
| `processes` | {'int': 3443} |
| `pssFallbackProcesses` | {'int': 3443} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
