# sandbox_telemetry_parse — 2026-10-06 01:52:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=81818 lines=184
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 179 |
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
| `chromeBrowserPssKb` | {'int': 179} |
| `chromeGpuPssKb` | {'int': 179} |
| `chromeOtherPssKb` | {'int': 179} |
| `chromeProcesses` | {'int': 179} |
| `chromeProfiles` | {'int': 179} |
| `chromeRendererMaxPssKb` | {'int': 179} |
| `chromeRendererPssKb` | {'int': 179} |
| `chromeRenderers` | {'int': 179} |
| `chromeTabs` | {'int': 179} |
| `chromeTabsProbedProfiles` | {'int': 179} |
| `chromeUtilityPssKb` | {'int': 179} |
| `desktopPssKb` | {'int': 179} |
| `hostPssKb` | {'int': 179} |
| `kind` | {'str': 179} |
| `memAvailableKb` | {'int': 179} |
| `memTotalKb` | {'int': 179} |
| `otherPssKb` | {'int': 179} |
| `processes` | {'int': 179} |
| `pssFallbackProcesses` | {'int': 179} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
