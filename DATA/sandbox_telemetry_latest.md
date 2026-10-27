# sandbox_telemetry_parse — 2026-10-27 08:32:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=416796 lines=925
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 920 |
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
| `chromeBrowserPssKb` | {'int': 920} |
| `chromeGpuPssKb` | {'int': 920} |
| `chromeOtherPssKb` | {'int': 920} |
| `chromeProcesses` | {'int': 920} |
| `chromeProfiles` | {'int': 920} |
| `chromeRendererMaxPssKb` | {'int': 920} |
| `chromeRendererPssKb` | {'int': 920} |
| `chromeRenderers` | {'int': 920} |
| `chromeTabs` | {'int': 920} |
| `chromeTabsProbedProfiles` | {'int': 920} |
| `chromeUtilityPssKb` | {'int': 920} |
| `desktopPssKb` | {'int': 920} |
| `hostPssKb` | {'int': 920} |
| `kind` | {'str': 920} |
| `memAvailableKb` | {'int': 920} |
| `memTotalKb` | {'int': 920} |
| `otherPssKb` | {'int': 920} |
| `processes` | {'int': 920} |
| `pssFallbackProcesses` | {'int': 920} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
