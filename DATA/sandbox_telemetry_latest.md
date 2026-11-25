# sandbox_telemetry_parse — 2026-11-25 06:01:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2619939 lines=5805
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5790 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5790} |
| `chromeGpuPssKb` | {'int': 5790} |
| `chromeOtherPssKb` | {'int': 5790} |
| `chromeProcesses` | {'int': 5790} |
| `chromeProfiles` | {'int': 5790} |
| `chromeRendererMaxPssKb` | {'int': 5790} |
| `chromeRendererPssKb` | {'int': 5790} |
| `chromeRenderers` | {'int': 5790} |
| `chromeTabs` | {'int': 5790} |
| `chromeTabsProbedProfiles` | {'int': 5790} |
| `chromeUtilityPssKb` | {'int': 5790} |
| `desktopPssKb` | {'int': 5790} |
| `hostPssKb` | {'int': 5790} |
| `kind` | {'str': 5790} |
| `memAvailableKb` | {'int': 5790} |
| `memTotalKb` | {'int': 5790} |
| `otherPssKb` | {'int': 5790} |
| `processes` | {'int': 5790} |
| `pssFallbackProcesses` | {'int': 5790} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
