# sandbox_telemetry_parse — 2026-11-27 22:01:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=609133 lines=1353
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1345 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1345} |
| `chromeGpuPssKb` | {'int': 1345} |
| `chromeOtherPssKb` | {'int': 1345} |
| `chromeProcesses` | {'int': 1345} |
| `chromeProfiles` | {'int': 1345} |
| `chromeRendererMaxPssKb` | {'int': 1345} |
| `chromeRendererPssKb` | {'int': 1345} |
| `chromeRenderers` | {'int': 1345} |
| `chromeTabs` | {'int': 1345} |
| `chromeTabsProbedProfiles` | {'int': 1345} |
| `chromeUtilityPssKb` | {'int': 1345} |
| `desktopPssKb` | {'int': 1345} |
| `hostPssKb` | {'int': 1345} |
| `kind` | {'str': 1345} |
| `memAvailableKb` | {'int': 1345} |
| `memTotalKb` | {'int': 1345} |
| `otherPssKb` | {'int': 1345} |
| `processes` | {'int': 1345} |
| `pssFallbackProcesses` | {'int': 1345} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
