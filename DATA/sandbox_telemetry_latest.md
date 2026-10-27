# sandbox_telemetry_parse — 2026-10-27 01:46:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=254967 lines=567
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 562 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 562} |
| `chromeGpuPssKb` | {'int': 562} |
| `chromeOtherPssKb` | {'int': 562} |
| `chromeProcesses` | {'int': 562} |
| `chromeProfiles` | {'int': 562} |
| `chromeRendererMaxPssKb` | {'int': 562} |
| `chromeRendererPssKb` | {'int': 562} |
| `chromeRenderers` | {'int': 562} |
| `chromeTabs` | {'int': 562} |
| `chromeTabsProbedProfiles` | {'int': 562} |
| `chromeUtilityPssKb` | {'int': 562} |
| `desktopPssKb` | {'int': 562} |
| `hostPssKb` | {'int': 562} |
| `kind` | {'str': 562} |
| `memAvailableKb` | {'int': 562} |
| `memTotalKb` | {'int': 562} |
| `otherPssKb` | {'int': 562} |
| `processes` | {'int': 562} |
| `pssFallbackProcesses` | {'int': 562} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
