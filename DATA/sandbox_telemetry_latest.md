# sandbox_telemetry_parse — 2026-11-24 22:58:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2487466 lines=5512
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5497 |
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
| `chromeBrowserPssKb` | {'int': 5497} |
| `chromeGpuPssKb` | {'int': 5497} |
| `chromeOtherPssKb` | {'int': 5497} |
| `chromeProcesses` | {'int': 5497} |
| `chromeProfiles` | {'int': 5497} |
| `chromeRendererMaxPssKb` | {'int': 5497} |
| `chromeRendererPssKb` | {'int': 5497} |
| `chromeRenderers` | {'int': 5497} |
| `chromeTabs` | {'int': 5497} |
| `chromeTabsProbedProfiles` | {'int': 5497} |
| `chromeUtilityPssKb` | {'int': 5497} |
| `desktopPssKb` | {'int': 5497} |
| `hostPssKb` | {'int': 5497} |
| `kind` | {'str': 5497} |
| `memAvailableKb` | {'int': 5497} |
| `memTotalKb` | {'int': 5497} |
| `otherPssKb` | {'int': 5497} |
| `processes` | {'int': 5497} |
| `pssFallbackProcesses` | {'int': 5497} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
