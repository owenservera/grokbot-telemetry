# sandbox_telemetry_parse — 2026-10-06 01:42:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=77258 lines=174
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 169 |
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
| `chromeBrowserPssKb` | {'int': 169} |
| `chromeGpuPssKb` | {'int': 169} |
| `chromeOtherPssKb` | {'int': 169} |
| `chromeProcesses` | {'int': 169} |
| `chromeProfiles` | {'int': 169} |
| `chromeRendererMaxPssKb` | {'int': 169} |
| `chromeRendererPssKb` | {'int': 169} |
| `chromeRenderers` | {'int': 169} |
| `chromeTabs` | {'int': 169} |
| `chromeTabsProbedProfiles` | {'int': 169} |
| `chromeUtilityPssKb` | {'int': 169} |
| `desktopPssKb` | {'int': 169} |
| `hostPssKb` | {'int': 169} |
| `kind` | {'str': 169} |
| `memAvailableKb` | {'int': 169} |
| `memTotalKb` | {'int': 169} |
| `otherPssKb` | {'int': 169} |
| `processes` | {'int': 169} |
| `pssFallbackProcesses` | {'int': 169} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
