# sandbox_telemetry_parse — 2026-11-23 17:34:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1927355 lines=4274
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4259 |
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
| `chromeBrowserPssKb` | {'int': 4259} |
| `chromeGpuPssKb` | {'int': 4259} |
| `chromeOtherPssKb` | {'int': 4259} |
| `chromeProcesses` | {'int': 4259} |
| `chromeProfiles` | {'int': 4259} |
| `chromeRendererMaxPssKb` | {'int': 4259} |
| `chromeRendererPssKb` | {'int': 4259} |
| `chromeRenderers` | {'int': 4259} |
| `chromeTabs` | {'int': 4259} |
| `chromeTabsProbedProfiles` | {'int': 4259} |
| `chromeUtilityPssKb` | {'int': 4259} |
| `desktopPssKb` | {'int': 4259} |
| `hostPssKb` | {'int': 4259} |
| `kind` | {'str': 4259} |
| `memAvailableKb` | {'int': 4259} |
| `memTotalKb` | {'int': 4259} |
| `otherPssKb` | {'int': 4259} |
| `processes` | {'int': 4259} |
| `pssFallbackProcesses` | {'int': 4259} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
