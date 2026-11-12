# sandbox_telemetry_parse — 2026-11-12 21:16:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2333808 lines=5165
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5156 |
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
| `chromeBrowserPssKb` | {'int': 5156} |
| `chromeGpuPssKb` | {'int': 5156} |
| `chromeOtherPssKb` | {'int': 5156} |
| `chromeProcesses` | {'int': 5156} |
| `chromeProfiles` | {'int': 5156} |
| `chromeRendererMaxPssKb` | {'int': 5156} |
| `chromeRendererPssKb` | {'int': 5156} |
| `chromeRenderers` | {'int': 5156} |
| `chromeTabs` | {'int': 5156} |
| `chromeTabsProbedProfiles` | {'int': 5156} |
| `chromeUtilityPssKb` | {'int': 5156} |
| `desktopPssKb` | {'int': 5156} |
| `hostPssKb` | {'int': 5156} |
| `kind` | {'str': 5156} |
| `memAvailableKb` | {'int': 5156} |
| `memTotalKb` | {'int': 5156} |
| `otherPssKb` | {'int': 5156} |
| `processes` | {'int': 5156} |
| `pssFallbackProcesses` | {'int': 5156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
