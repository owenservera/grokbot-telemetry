# sandbox_telemetry_parse — 2026-11-10 21:09:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1322783 lines=2931
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2922 |
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
| `chromeBrowserPssKb` | {'int': 2922} |
| `chromeGpuPssKb` | {'int': 2922} |
| `chromeOtherPssKb` | {'int': 2922} |
| `chromeProcesses` | {'int': 2922} |
| `chromeProfiles` | {'int': 2922} |
| `chromeRendererMaxPssKb` | {'int': 2922} |
| `chromeRendererPssKb` | {'int': 2922} |
| `chromeRenderers` | {'int': 2922} |
| `chromeTabs` | {'int': 2922} |
| `chromeTabsProbedProfiles` | {'int': 2922} |
| `chromeUtilityPssKb` | {'int': 2922} |
| `desktopPssKb` | {'int': 2922} |
| `hostPssKb` | {'int': 2922} |
| `kind` | {'str': 2922} |
| `memAvailableKb` | {'int': 2922} |
| `memTotalKb` | {'int': 2922} |
| `otherPssKb` | {'int': 2922} |
| `processes` | {'int': 2922} |
| `pssFallbackProcesses` | {'int': 2922} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
