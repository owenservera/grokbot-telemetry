# sandbox_telemetry_parse — 2026-11-11 15:24:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1691926 lines=3747
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3738 |
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
| `chromeBrowserPssKb` | {'int': 3738} |
| `chromeGpuPssKb` | {'int': 3738} |
| `chromeOtherPssKb` | {'int': 3738} |
| `chromeProcesses` | {'int': 3738} |
| `chromeProfiles` | {'int': 3738} |
| `chromeRendererMaxPssKb` | {'int': 3738} |
| `chromeRendererPssKb` | {'int': 3738} |
| `chromeRenderers` | {'int': 3738} |
| `chromeTabs` | {'int': 3738} |
| `chromeTabsProbedProfiles` | {'int': 3738} |
| `chromeUtilityPssKb` | {'int': 3738} |
| `desktopPssKb` | {'int': 3738} |
| `hostPssKb` | {'int': 3738} |
| `kind` | {'str': 3738} |
| `memAvailableKb` | {'int': 3738} |
| `memTotalKb` | {'int': 3738} |
| `otherPssKb` | {'int': 3738} |
| `processes` | {'int': 3738} |
| `pssFallbackProcesses` | {'int': 3738} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
