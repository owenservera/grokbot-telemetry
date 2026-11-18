# sandbox_telemetry_parse — 2026-11-18 02:30:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=638107 lines=1417
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1410 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1410} |
| `chromeGpuPssKb` | {'int': 1410} |
| `chromeOtherPssKb` | {'int': 1410} |
| `chromeProcesses` | {'int': 1410} |
| `chromeProfiles` | {'int': 1410} |
| `chromeRendererMaxPssKb` | {'int': 1410} |
| `chromeRendererPssKb` | {'int': 1410} |
| `chromeRenderers` | {'int': 1410} |
| `chromeTabs` | {'int': 1410} |
| `chromeTabsProbedProfiles` | {'int': 1410} |
| `chromeUtilityPssKb` | {'int': 1410} |
| `desktopPssKb` | {'int': 1410} |
| `hostPssKb` | {'int': 1410} |
| `kind` | {'str': 1410} |
| `memAvailableKb` | {'int': 1410} |
| `memTotalKb` | {'int': 1410} |
| `otherPssKb` | {'int': 1410} |
| `processes` | {'int': 1410} |
| `pssFallbackProcesses` | {'int': 1410} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
