# sandbox_telemetry_parse — 2026-10-07 12:19:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1014517 lines=2229
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2224 |
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
| `chromeBrowserPssKb` | {'int': 2224} |
| `chromeGpuPssKb` | {'int': 2224} |
| `chromeOtherPssKb` | {'int': 2224} |
| `chromeProcesses` | {'int': 2224} |
| `chromeProfiles` | {'int': 2224} |
| `chromeRendererMaxPssKb` | {'int': 2224} |
| `chromeRendererPssKb` | {'int': 2224} |
| `chromeRenderers` | {'int': 2224} |
| `chromeTabs` | {'int': 2224} |
| `chromeTabsProbedProfiles` | {'int': 2224} |
| `chromeUtilityPssKb` | {'int': 2224} |
| `desktopPssKb` | {'int': 2224} |
| `hostPssKb` | {'int': 2224} |
| `kind` | {'str': 2224} |
| `memAvailableKb` | {'int': 2224} |
| `memTotalKb` | {'int': 2224} |
| `otherPssKb` | {'int': 2224} |
| `processes` | {'int': 2224} |
| `pssFallbackProcesses` | {'int': 2224} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
