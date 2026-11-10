# sandbox_telemetry_parse — 2026-11-10 19:32:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1286134 lines=2850
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2841 |
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
| `chromeBrowserPssKb` | {'int': 2841} |
| `chromeGpuPssKb` | {'int': 2841} |
| `chromeOtherPssKb` | {'int': 2841} |
| `chromeProcesses` | {'int': 2841} |
| `chromeProfiles` | {'int': 2841} |
| `chromeRendererMaxPssKb` | {'int': 2841} |
| `chromeRendererPssKb` | {'int': 2841} |
| `chromeRenderers` | {'int': 2841} |
| `chromeTabs` | {'int': 2841} |
| `chromeTabsProbedProfiles` | {'int': 2841} |
| `chromeUtilityPssKb` | {'int': 2841} |
| `desktopPssKb` | {'int': 2841} |
| `hostPssKb` | {'int': 2841} |
| `kind` | {'str': 2841} |
| `memAvailableKb` | {'int': 2841} |
| `memTotalKb` | {'int': 2841} |
| `otherPssKb` | {'int': 2841} |
| `processes` | {'int': 2841} |
| `pssFallbackProcesses` | {'int': 2841} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
