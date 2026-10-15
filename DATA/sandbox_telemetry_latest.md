# sandbox_telemetry_parse — 2026-10-15 08:46:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=769222 lines=1706
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1701 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1701} |
| `chromeGpuPssKb` | {'int': 1701} |
| `chromeOtherPssKb` | {'int': 1701} |
| `chromeProcesses` | {'int': 1701} |
| `chromeProfiles` | {'int': 1701} |
| `chromeRendererMaxPssKb` | {'int': 1701} |
| `chromeRendererPssKb` | {'int': 1701} |
| `chromeRenderers` | {'int': 1701} |
| `chromeTabs` | {'int': 1701} |
| `chromeTabsProbedProfiles` | {'int': 1701} |
| `chromeUtilityPssKb` | {'int': 1701} |
| `desktopPssKb` | {'int': 1701} |
| `hostPssKb` | {'int': 1701} |
| `kind` | {'str': 1701} |
| `memAvailableKb` | {'int': 1701} |
| `memTotalKb` | {'int': 1701} |
| `otherPssKb` | {'int': 1701} |
| `processes` | {'int': 1701} |
| `pssFallbackProcesses` | {'int': 1701} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
