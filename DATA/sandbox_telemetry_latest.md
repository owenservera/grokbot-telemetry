# sandbox_telemetry_parse — 2026-10-16 19:50:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=778890 lines=2911
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1928 |
| `memory_sample` | 974 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 974} |
| `chromeGpuPssKb` | {'int': 974} |
| `chromeOtherPssKb` | {'int': 974} |
| `chromeProcesses` | {'int': 974} |
| `chromeProfiles` | {'int': 974} |
| `chromeRendererMaxPssKb` | {'int': 974} |
| `chromeRendererPssKb` | {'int': 974} |
| `chromeRenderers` | {'int': 974} |
| `chromeTabs` | {'int': 974} |
| `chromeTabsProbedProfiles` | {'int': 974} |
| `chromeUtilityPssKb` | {'int': 974} |
| `desktopPssKb` | {'int': 974} |
| `hostPssKb` | {'int': 974} |
| `kind` | {'str': 974} |
| `memAvailableKb` | {'int': 974} |
| `memTotalKb` | {'int': 974} |
| `otherPssKb` | {'int': 974} |
| `processes` | {'int': 974} |
| `pssFallbackProcesses` | {'int': 974} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1925} |
| `display` | {'int': 1928} |
| `kind` | {'str': 1928} |
| `processes` | {'int': 1928} |
| `pssKb` | {'int': 1928} |
| `rendererMaxPssKb` | {'int': 1928} |
| `renderers` | {'int': 1928} |
| `tabs` | {'int': 1927} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
