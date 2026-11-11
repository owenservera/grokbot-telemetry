# sandbox_telemetry_parse — 2026-11-11 10:37:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1587391 lines=3516
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3507 |
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
| `chromeBrowserPssKb` | {'int': 3507} |
| `chromeGpuPssKb` | {'int': 3507} |
| `chromeOtherPssKb` | {'int': 3507} |
| `chromeProcesses` | {'int': 3507} |
| `chromeProfiles` | {'int': 3507} |
| `chromeRendererMaxPssKb` | {'int': 3507} |
| `chromeRendererPssKb` | {'int': 3507} |
| `chromeRenderers` | {'int': 3507} |
| `chromeTabs` | {'int': 3507} |
| `chromeTabsProbedProfiles` | {'int': 3507} |
| `chromeUtilityPssKb` | {'int': 3507} |
| `desktopPssKb` | {'int': 3507} |
| `hostPssKb` | {'int': 3507} |
| `kind` | {'str': 3507} |
| `memAvailableKb` | {'int': 3507} |
| `memTotalKb` | {'int': 3507} |
| `otherPssKb` | {'int': 3507} |
| `processes` | {'int': 3507} |
| `pssFallbackProcesses` | {'int': 3507} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
