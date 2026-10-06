# sandbox_telemetry_parse — 2026-10-06 14:18:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=417890 lines=921
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 916 |
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
| `chromeBrowserPssKb` | {'int': 916} |
| `chromeGpuPssKb` | {'int': 916} |
| `chromeOtherPssKb` | {'int': 916} |
| `chromeProcesses` | {'int': 916} |
| `chromeProfiles` | {'int': 916} |
| `chromeRendererMaxPssKb` | {'int': 916} |
| `chromeRendererPssKb` | {'int': 916} |
| `chromeRenderers` | {'int': 916} |
| `chromeTabs` | {'int': 916} |
| `chromeTabsProbedProfiles` | {'int': 916} |
| `chromeUtilityPssKb` | {'int': 916} |
| `desktopPssKb` | {'int': 916} |
| `hostPssKb` | {'int': 916} |
| `kind` | {'str': 916} |
| `memAvailableKb` | {'int': 916} |
| `memTotalKb` | {'int': 916} |
| `otherPssKb` | {'int': 916} |
| `processes` | {'int': 916} |
| `pssFallbackProcesses` | {'int': 916} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
