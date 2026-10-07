# sandbox_telemetry_parse — 2026-10-07 13:52:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1056925 lines=2322
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2317 |
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
| `chromeBrowserPssKb` | {'int': 2317} |
| `chromeGpuPssKb` | {'int': 2317} |
| `chromeOtherPssKb` | {'int': 2317} |
| `chromeProcesses` | {'int': 2317} |
| `chromeProfiles` | {'int': 2317} |
| `chromeRendererMaxPssKb` | {'int': 2317} |
| `chromeRendererPssKb` | {'int': 2317} |
| `chromeRenderers` | {'int': 2317} |
| `chromeTabs` | {'int': 2317} |
| `chromeTabsProbedProfiles` | {'int': 2317} |
| `chromeUtilityPssKb` | {'int': 2317} |
| `desktopPssKb` | {'int': 2317} |
| `hostPssKb` | {'int': 2317} |
| `kind` | {'str': 2317} |
| `memAvailableKb` | {'int': 2317} |
| `memTotalKb` | {'int': 2317} |
| `otherPssKb` | {'int': 2317} |
| `processes` | {'int': 2317} |
| `pssFallbackProcesses` | {'int': 2317} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
