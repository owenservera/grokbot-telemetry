# sandbox_telemetry_parse — 2026-11-17 06:09:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=273239 lines=610
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 603 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 603} |
| `chromeGpuPssKb` | {'int': 603} |
| `chromeOtherPssKb` | {'int': 603} |
| `chromeProcesses` | {'int': 603} |
| `chromeProfiles` | {'int': 603} |
| `chromeRendererMaxPssKb` | {'int': 603} |
| `chromeRendererPssKb` | {'int': 603} |
| `chromeRenderers` | {'int': 603} |
| `chromeTabs` | {'int': 603} |
| `chromeTabsProbedProfiles` | {'int': 603} |
| `chromeUtilityPssKb` | {'int': 603} |
| `desktopPssKb` | {'int': 603} |
| `hostPssKb` | {'int': 603} |
| `kind` | {'str': 603} |
| `memAvailableKb` | {'int': 603} |
| `memTotalKb` | {'int': 603} |
| `otherPssKb` | {'int': 603} |
| `processes` | {'int': 603} |
| `pssFallbackProcesses` | {'int': 603} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
