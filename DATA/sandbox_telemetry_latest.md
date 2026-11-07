# sandbox_telemetry_parse — 2026-11-07 07:33:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=362550 lines=809
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 800 |
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
| `chromeBrowserPssKb` | {'int': 800} |
| `chromeGpuPssKb` | {'int': 800} |
| `chromeOtherPssKb` | {'int': 800} |
| `chromeProcesses` | {'int': 800} |
| `chromeProfiles` | {'int': 800} |
| `chromeRendererMaxPssKb` | {'int': 800} |
| `chromeRendererPssKb` | {'int': 800} |
| `chromeRenderers` | {'int': 800} |
| `chromeTabs` | {'int': 800} |
| `chromeTabsProbedProfiles` | {'int': 800} |
| `chromeUtilityPssKb` | {'int': 800} |
| `desktopPssKb` | {'int': 800} |
| `hostPssKb` | {'int': 800} |
| `kind` | {'str': 800} |
| `memAvailableKb` | {'int': 800} |
| `memTotalKb` | {'int': 800} |
| `otherPssKb` | {'int': 800} |
| `processes` | {'int': 800} |
| `pssFallbackProcesses` | {'int': 800} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
