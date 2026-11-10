# sandbox_telemetry_parse — 2026-11-10 02:04:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=942158 lines=2090
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2081 |
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
| `chromeBrowserPssKb` | {'int': 2081} |
| `chromeGpuPssKb` | {'int': 2081} |
| `chromeOtherPssKb` | {'int': 2081} |
| `chromeProcesses` | {'int': 2081} |
| `chromeProfiles` | {'int': 2081} |
| `chromeRendererMaxPssKb` | {'int': 2081} |
| `chromeRendererPssKb` | {'int': 2081} |
| `chromeRenderers` | {'int': 2081} |
| `chromeTabs` | {'int': 2081} |
| `chromeTabsProbedProfiles` | {'int': 2081} |
| `chromeUtilityPssKb` | {'int': 2081} |
| `desktopPssKb` | {'int': 2081} |
| `hostPssKb` | {'int': 2081} |
| `kind` | {'str': 2081} |
| `memAvailableKb` | {'int': 2081} |
| `memTotalKb` | {'int': 2081} |
| `otherPssKb` | {'int': 2081} |
| `processes` | {'int': 2081} |
| `pssFallbackProcesses` | {'int': 2081} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
