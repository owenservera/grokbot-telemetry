# sandbox_telemetry_parse — 2026-11-12 06:46:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2010995 lines=4452
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4443 |
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
| `chromeBrowserPssKb` | {'int': 4443} |
| `chromeGpuPssKb` | {'int': 4443} |
| `chromeOtherPssKb` | {'int': 4443} |
| `chromeProcesses` | {'int': 4443} |
| `chromeProfiles` | {'int': 4443} |
| `chromeRendererMaxPssKb` | {'int': 4443} |
| `chromeRendererPssKb` | {'int': 4443} |
| `chromeRenderers` | {'int': 4443} |
| `chromeTabs` | {'int': 4443} |
| `chromeTabsProbedProfiles` | {'int': 4443} |
| `chromeUtilityPssKb` | {'int': 4443} |
| `desktopPssKb` | {'int': 4443} |
| `hostPssKb` | {'int': 4443} |
| `kind` | {'str': 4443} |
| `memAvailableKb` | {'int': 4443} |
| `memTotalKb` | {'int': 4443} |
| `otherPssKb` | {'int': 4443} |
| `processes` | {'int': 4443} |
| `pssFallbackProcesses` | {'int': 4443} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
