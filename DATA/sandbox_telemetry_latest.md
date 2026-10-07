# sandbox_telemetry_parse — 2026-10-07 11:18:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=986701 lines=2168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2163 |
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
| `chromeBrowserPssKb` | {'int': 2163} |
| `chromeGpuPssKb` | {'int': 2163} |
| `chromeOtherPssKb` | {'int': 2163} |
| `chromeProcesses` | {'int': 2163} |
| `chromeProfiles` | {'int': 2163} |
| `chromeRendererMaxPssKb` | {'int': 2163} |
| `chromeRendererPssKb` | {'int': 2163} |
| `chromeRenderers` | {'int': 2163} |
| `chromeTabs` | {'int': 2163} |
| `chromeTabsProbedProfiles` | {'int': 2163} |
| `chromeUtilityPssKb` | {'int': 2163} |
| `desktopPssKb` | {'int': 2163} |
| `hostPssKb` | {'int': 2163} |
| `kind` | {'str': 2163} |
| `memAvailableKb` | {'int': 2163} |
| `memTotalKb` | {'int': 2163} |
| `otherPssKb` | {'int': 2163} |
| `processes` | {'int': 2163} |
| `pssFallbackProcesses` | {'int': 2163} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
