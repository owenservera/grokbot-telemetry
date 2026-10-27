# sandbox_telemetry_parse — 2026-10-27 05:33:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=347640 lines=772
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 767 |
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
| `chromeBrowserPssKb` | {'int': 767} |
| `chromeGpuPssKb` | {'int': 767} |
| `chromeOtherPssKb` | {'int': 767} |
| `chromeProcesses` | {'int': 767} |
| `chromeProfiles` | {'int': 767} |
| `chromeRendererMaxPssKb` | {'int': 767} |
| `chromeRendererPssKb` | {'int': 767} |
| `chromeRenderers` | {'int': 767} |
| `chromeTabs` | {'int': 767} |
| `chromeTabsProbedProfiles` | {'int': 767} |
| `chromeUtilityPssKb` | {'int': 767} |
| `desktopPssKb` | {'int': 767} |
| `hostPssKb` | {'int': 767} |
| `kind` | {'str': 767} |
| `memAvailableKb` | {'int': 767} |
| `memTotalKb` | {'int': 767} |
| `otherPssKb` | {'int': 767} |
| `processes` | {'int': 767} |
| `pssFallbackProcesses` | {'int': 767} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
