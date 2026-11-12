# sandbox_telemetry_parse — 2026-11-12 09:08:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2055788 lines=4551
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4542 |
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
| `chromeBrowserPssKb` | {'int': 4542} |
| `chromeGpuPssKb` | {'int': 4542} |
| `chromeOtherPssKb` | {'int': 4542} |
| `chromeProcesses` | {'int': 4542} |
| `chromeProfiles` | {'int': 4542} |
| `chromeRendererMaxPssKb` | {'int': 4542} |
| `chromeRendererPssKb` | {'int': 4542} |
| `chromeRenderers` | {'int': 4542} |
| `chromeTabs` | {'int': 4542} |
| `chromeTabsProbedProfiles` | {'int': 4542} |
| `chromeUtilityPssKb` | {'int': 4542} |
| `desktopPssKb` | {'int': 4542} |
| `hostPssKb` | {'int': 4542} |
| `kind` | {'str': 4542} |
| `memAvailableKb` | {'int': 4542} |
| `memTotalKb` | {'int': 4542} |
| `otherPssKb` | {'int': 4542} |
| `processes` | {'int': 4542} |
| `pssFallbackProcesses` | {'int': 4542} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
