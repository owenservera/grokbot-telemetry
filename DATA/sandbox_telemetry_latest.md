# sandbox_telemetry_parse — 2026-11-12 18:39:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2271769 lines=5028
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5019 |
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
| `chromeBrowserPssKb` | {'int': 5019} |
| `chromeGpuPssKb` | {'int': 5019} |
| `chromeOtherPssKb` | {'int': 5019} |
| `chromeProcesses` | {'int': 5019} |
| `chromeProfiles` | {'int': 5019} |
| `chromeRendererMaxPssKb` | {'int': 5019} |
| `chromeRendererPssKb` | {'int': 5019} |
| `chromeRenderers` | {'int': 5019} |
| `chromeTabs` | {'int': 5019} |
| `chromeTabsProbedProfiles` | {'int': 5019} |
| `chromeUtilityPssKb` | {'int': 5019} |
| `desktopPssKb` | {'int': 5019} |
| `hostPssKb` | {'int': 5019} |
| `kind` | {'str': 5019} |
| `memAvailableKb` | {'int': 5019} |
| `memTotalKb` | {'int': 5019} |
| `otherPssKb` | {'int': 5019} |
| `processes` | {'int': 5019} |
| `pssFallbackProcesses` | {'int': 5019} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
