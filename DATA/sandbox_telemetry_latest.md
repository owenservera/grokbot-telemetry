# sandbox_telemetry_parse — 2026-10-07 01:32:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=723495 lines=1591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1586 |
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
| `chromeBrowserPssKb` | {'int': 1586} |
| `chromeGpuPssKb` | {'int': 1586} |
| `chromeOtherPssKb` | {'int': 1586} |
| `chromeProcesses` | {'int': 1586} |
| `chromeProfiles` | {'int': 1586} |
| `chromeRendererMaxPssKb` | {'int': 1586} |
| `chromeRendererPssKb` | {'int': 1586} |
| `chromeRenderers` | {'int': 1586} |
| `chromeTabs` | {'int': 1586} |
| `chromeTabsProbedProfiles` | {'int': 1586} |
| `chromeUtilityPssKb` | {'int': 1586} |
| `desktopPssKb` | {'int': 1586} |
| `hostPssKb` | {'int': 1586} |
| `kind` | {'str': 1586} |
| `memAvailableKb` | {'int': 1586} |
| `memTotalKb` | {'int': 1586} |
| `otherPssKb` | {'int': 1586} |
| `processes` | {'int': 1586} |
| `pssFallbackProcesses` | {'int': 1586} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
