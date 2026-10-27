# sandbox_telemetry_parse — 2026-10-27 08:34:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=417700 lines=927
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 922 |
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
| `chromeBrowserPssKb` | {'int': 922} |
| `chromeGpuPssKb` | {'int': 922} |
| `chromeOtherPssKb` | {'int': 922} |
| `chromeProcesses` | {'int': 922} |
| `chromeProfiles` | {'int': 922} |
| `chromeRendererMaxPssKb` | {'int': 922} |
| `chromeRendererPssKb` | {'int': 922} |
| `chromeRenderers` | {'int': 922} |
| `chromeTabs` | {'int': 922} |
| `chromeTabsProbedProfiles` | {'int': 922} |
| `chromeUtilityPssKb` | {'int': 922} |
| `desktopPssKb` | {'int': 922} |
| `hostPssKb` | {'int': 922} |
| `kind` | {'str': 922} |
| `memAvailableKb` | {'int': 922} |
| `memTotalKb` | {'int': 922} |
| `otherPssKb` | {'int': 922} |
| `processes` | {'int': 922} |
| `pssFallbackProcesses` | {'int': 922} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
