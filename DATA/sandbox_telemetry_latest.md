# sandbox_telemetry_parse — 2026-11-17 06:42:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=284991 lines=636
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 629 |
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
| `chromeBrowserPssKb` | {'int': 629} |
| `chromeGpuPssKb` | {'int': 629} |
| `chromeOtherPssKb` | {'int': 629} |
| `chromeProcesses` | {'int': 629} |
| `chromeProfiles` | {'int': 629} |
| `chromeRendererMaxPssKb` | {'int': 629} |
| `chromeRendererPssKb` | {'int': 629} |
| `chromeRenderers` | {'int': 629} |
| `chromeTabs` | {'int': 629} |
| `chromeTabsProbedProfiles` | {'int': 629} |
| `chromeUtilityPssKb` | {'int': 629} |
| `desktopPssKb` | {'int': 629} |
| `hostPssKb` | {'int': 629} |
| `kind` | {'str': 629} |
| `memAvailableKb` | {'int': 629} |
| `memTotalKb` | {'int': 629} |
| `otherPssKb` | {'int': 629} |
| `processes` | {'int': 629} |
| `pssFallbackProcesses` | {'int': 629} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
