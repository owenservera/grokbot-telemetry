# sandbox_telemetry_parse — 2026-10-16 11:00:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=382393 lines=1429
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 940 |
| `memory_sample` | 480 |
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
| `chromeBrowserPssKb` | {'int': 480} |
| `chromeGpuPssKb` | {'int': 480} |
| `chromeOtherPssKb` | {'int': 480} |
| `chromeProcesses` | {'int': 480} |
| `chromeProfiles` | {'int': 480} |
| `chromeRendererMaxPssKb` | {'int': 480} |
| `chromeRendererPssKb` | {'int': 480} |
| `chromeRenderers` | {'int': 480} |
| `chromeTabs` | {'int': 480} |
| `chromeTabsProbedProfiles` | {'int': 480} |
| `chromeUtilityPssKb` | {'int': 480} |
| `desktopPssKb` | {'int': 480} |
| `hostPssKb` | {'int': 480} |
| `kind` | {'str': 480} |
| `memAvailableKb` | {'int': 480} |
| `memTotalKb` | {'int': 480} |
| `otherPssKb` | {'int': 480} |
| `processes` | {'int': 480} |
| `pssFallbackProcesses` | {'int': 480} |

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
| `cpuMillicores` | {'int': 937} |
| `display` | {'int': 940} |
| `kind` | {'str': 940} |
| `processes` | {'int': 940} |
| `pssKb` | {'int': 940} |
| `rendererMaxPssKb` | {'int': 940} |
| `renderers` | {'int': 940} |
| `tabs` | {'int': 939} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
