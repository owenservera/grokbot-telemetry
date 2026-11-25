# sandbox_telemetry_parse — 2026-11-25 13:46:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2780501 lines=6160
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6145 |
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
| `chromeBrowserPssKb` | {'int': 6145} |
| `chromeGpuPssKb` | {'int': 6145} |
| `chromeOtherPssKb` | {'int': 6145} |
| `chromeProcesses` | {'int': 6145} |
| `chromeProfiles` | {'int': 6145} |
| `chromeRendererMaxPssKb` | {'int': 6145} |
| `chromeRendererPssKb` | {'int': 6145} |
| `chromeRenderers` | {'int': 6145} |
| `chromeTabs` | {'int': 6145} |
| `chromeTabsProbedProfiles` | {'int': 6145} |
| `chromeUtilityPssKb` | {'int': 6145} |
| `desktopPssKb` | {'int': 6145} |
| `hostPssKb` | {'int': 6145} |
| `kind` | {'str': 6145} |
| `memAvailableKb` | {'int': 6145} |
| `memTotalKb` | {'int': 6145} |
| `otherPssKb` | {'int': 6145} |
| `processes` | {'int': 6145} |
| `pssFallbackProcesses` | {'int': 6145} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
