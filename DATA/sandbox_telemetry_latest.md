# sandbox_telemetry_parse — 2026-11-25 13:58:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2783213 lines=6166
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6151 |
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
| `chromeBrowserPssKb` | {'int': 6151} |
| `chromeGpuPssKb` | {'int': 6151} |
| `chromeOtherPssKb` | {'int': 6151} |
| `chromeProcesses` | {'int': 6151} |
| `chromeProfiles` | {'int': 6151} |
| `chromeRendererMaxPssKb` | {'int': 6151} |
| `chromeRendererPssKb` | {'int': 6151} |
| `chromeRenderers` | {'int': 6151} |
| `chromeTabs` | {'int': 6151} |
| `chromeTabsProbedProfiles` | {'int': 6151} |
| `chromeUtilityPssKb` | {'int': 6151} |
| `desktopPssKb` | {'int': 6151} |
| `hostPssKb` | {'int': 6151} |
| `kind` | {'str': 6151} |
| `memAvailableKb` | {'int': 6151} |
| `memTotalKb` | {'int': 6151} |
| `otherPssKb` | {'int': 6151} |
| `processes` | {'int': 6151} |
| `pssFallbackProcesses` | {'int': 6151} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
