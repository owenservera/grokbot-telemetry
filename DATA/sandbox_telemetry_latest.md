# sandbox_telemetry_parse — 2026-11-11 11:27:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1605953 lines=3557
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3548 |
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
| `chromeBrowserPssKb` | {'int': 3548} |
| `chromeGpuPssKb` | {'int': 3548} |
| `chromeOtherPssKb` | {'int': 3548} |
| `chromeProcesses` | {'int': 3548} |
| `chromeProfiles` | {'int': 3548} |
| `chromeRendererMaxPssKb` | {'int': 3548} |
| `chromeRendererPssKb` | {'int': 3548} |
| `chromeRenderers` | {'int': 3548} |
| `chromeTabs` | {'int': 3548} |
| `chromeTabsProbedProfiles` | {'int': 3548} |
| `chromeUtilityPssKb` | {'int': 3548} |
| `desktopPssKb` | {'int': 3548} |
| `hostPssKb` | {'int': 3548} |
| `kind` | {'str': 3548} |
| `memAvailableKb` | {'int': 3548} |
| `memTotalKb` | {'int': 3548} |
| `otherPssKb` | {'int': 3548} |
| `processes` | {'int': 3548} |
| `pssFallbackProcesses` | {'int': 3548} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
