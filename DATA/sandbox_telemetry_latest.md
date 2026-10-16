# sandbox_telemetry_parse — 2026-10-16 22:24:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=880080 lines=3289
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2180 |
| `memory_sample` | 1100 |
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
| `chromeBrowserPssKb` | {'int': 1100} |
| `chromeGpuPssKb` | {'int': 1100} |
| `chromeOtherPssKb` | {'int': 1100} |
| `chromeProcesses` | {'int': 1100} |
| `chromeProfiles` | {'int': 1100} |
| `chromeRendererMaxPssKb` | {'int': 1100} |
| `chromeRendererPssKb` | {'int': 1100} |
| `chromeRenderers` | {'int': 1100} |
| `chromeTabs` | {'int': 1100} |
| `chromeTabsProbedProfiles` | {'int': 1100} |
| `chromeUtilityPssKb` | {'int': 1100} |
| `desktopPssKb` | {'int': 1100} |
| `hostPssKb` | {'int': 1100} |
| `kind` | {'str': 1100} |
| `memAvailableKb` | {'int': 1100} |
| `memTotalKb` | {'int': 1100} |
| `otherPssKb` | {'int': 1100} |
| `processes` | {'int': 1100} |
| `pssFallbackProcesses` | {'int': 1100} |

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
| `cpuMillicores` | {'int': 2177} |
| `display` | {'int': 2180} |
| `kind` | {'str': 2180} |
| `processes` | {'int': 2180} |
| `pssKb` | {'int': 2180} |
| `rendererMaxPssKb` | {'int': 2180} |
| `renderers` | {'int': 2180} |
| `tabs` | {'int': 2179} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
