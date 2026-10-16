# sandbox_telemetry_parse — 2026-10-16 08:13:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=267598 lines=1000
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 654 |
| `memory_sample` | 337 |
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
| `chromeBrowserPssKb` | {'int': 337} |
| `chromeGpuPssKb` | {'int': 337} |
| `chromeOtherPssKb` | {'int': 337} |
| `chromeProcesses` | {'int': 337} |
| `chromeProfiles` | {'int': 337} |
| `chromeRendererMaxPssKb` | {'int': 337} |
| `chromeRendererPssKb` | {'int': 337} |
| `chromeRenderers` | {'int': 337} |
| `chromeTabs` | {'int': 337} |
| `chromeTabsProbedProfiles` | {'int': 337} |
| `chromeUtilityPssKb` | {'int': 337} |
| `desktopPssKb` | {'int': 337} |
| `hostPssKb` | {'int': 337} |
| `kind` | {'str': 337} |
| `memAvailableKb` | {'int': 337} |
| `memTotalKb` | {'int': 337} |
| `otherPssKb` | {'int': 337} |
| `processes` | {'int': 337} |
| `pssFallbackProcesses` | {'int': 337} |

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
| `cpuMillicores` | {'int': 651} |
| `display` | {'int': 654} |
| `kind` | {'str': 654} |
| `processes` | {'int': 654} |
| `pssKb` | {'int': 654} |
| `rendererMaxPssKb` | {'int': 654} |
| `renderers` | {'int': 654} |
| `tabs` | {'int': 653} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
